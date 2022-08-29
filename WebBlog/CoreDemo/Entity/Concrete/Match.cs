﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entity.Concrete
{
   public class Match
    {
        public int MatchId { get; set; }
        public int? HomeTeamId { get; set; }
        public int? GuestTeamId { get; set; }
        public string MatchDate { get; set; }
        public string Stadium { get; set; }
        public Team HomeTeam { get; set; }
        public Team GuestTeam { get; set; }
    }
}
