﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WindowsProject.Models
{
    public class Consumer
    {
        public int Id { get; set; }
        public int UserId { get; set; }
        public int ProductId { get; set; }

        public int Count { get; set; }
        public decimal Price { get; set; }
        public DateTime CreatedDate { get; set; }
        public User User { get; set; }
        public Product Product { get; set; }
    }

}