﻿using System;
using System.Collections;
using Microservice.Core.DataAccess.Interfaces;
using Microservice.Core.DataAccess.MongoDB;

namespace Microservice.Logging.Infrastructure
{
    public class ReadOnlyService : IReadOnlyService
    {
        private readonly Hashtable _hashRepository;

        public ReadOnlyService(LoggingContext dbContext)
        {
            _hashRepository = new Hashtable();
            Context = dbContext;
        }

        private LoggingContext Context { get; }

        public IReadOnlyRepository<TEntity> Repository<TEntity>() where TEntity : class
        {
            var key = typeof(TEntity).Name;
            if (!_hashRepository.Contains(key))
            {
                var repositoryType = typeof(BaseRepository<>);
                var repository = Activator.CreateInstance(repositoryType.MakeGenericType(typeof(TEntity)), Context);
                _hashRepository[key] = repository;
            }

            return (IReadOnlyRepository<TEntity>)_hashRepository[key];
        }
    }
}