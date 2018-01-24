﻿using System;
using RKSystem.Service.Core.Models;

namespace RKSystem.UserService.Models.Commands
{
    public class CreateUserCommand : Command
    {
        public AppUserDto userDto { get; set; }

        public CreateUserCommand(AppUserDto appUserDto)
        {
            this.userDto = appUserDto;
        }
    }
}