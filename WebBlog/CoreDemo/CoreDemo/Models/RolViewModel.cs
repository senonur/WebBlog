﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace CoreDemo.Models
{
    public class RolViewModel
    {
        [Required(ErrorMessage ="Lütfen Rol adı giriniz")]
        public string name { get; set; }
    }
}
