using GroupManager.Core.Model;
using GroupManager.Core.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GroupManager.Core.Context
{
    public class ApplicationContext:DbContext
    {
        public DbSet<Student> Students { get; set; }
        public DbSet<Certificate> Certificates { get; set; }
        public DbSet<Group> Groups { get; set; }
        public DbSet<Parents> Parents { get; set; }
        public DbSet<Privilege> Privileges { get; set; }
        
        public ApplicationContext()
            :base("DefaultConnection")
        {
            
        }
    }
}
