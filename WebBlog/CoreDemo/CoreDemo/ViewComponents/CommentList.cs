﻿using CoreDemo.Models;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace CoreDemo.ViewComponents
{
    public class CommentList:ViewComponent
    {
        public IViewComponentResult Invoke()
        {
            var commentvalues = new List<UserComment>
            {
                new UserComment
                {
                    Id=1,
                    Username="Onur"
                },
                 new UserComment
                {
                    Id=2,
                    Username="Ömür"
                },
                  new UserComment
                {
                    Id=3,
                    Username="Mehmet"
                }

            };
            return View(commentvalues);
        }
    }
}
