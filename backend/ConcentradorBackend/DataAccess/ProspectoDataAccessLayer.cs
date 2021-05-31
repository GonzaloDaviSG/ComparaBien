using System;
using System.Collections.Generic;
using System.Linq;
using ConcentradorBackend.Interfaces;
using ConcentradorBackend.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace ConcentradorBackend.DataAccess
{
    public class ProspectoDataAccessLayer: IProspectoService
    {
        private readonly ConcentradorDBContext _dbContext;
        readonly IProspectoService _ProspectoService;

        public ProspectoDataAccessLayer(ConcentradorDBContext dbContext)
        {
            _dbContext = dbContext;
        }
        public int guardar(Prospecto item)
        {
            try
            {
                item.FechaRegistro = DateTime.Now;
                _dbContext.Prospecto.Add(item);
                _dbContext.SaveChanges();

                return item.ProspectoId;
            }
            catch (Exception ex)
            {
                throw;
            }
        }
        
    }
}