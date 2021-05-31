using System.Collections.Generic;
using System.Threading.Tasks;
using ConcentradorBackend.Interfaces;
using ConcentradorBackend.Models;
using Microsoft.AspNetCore.Mvc;

namespace ConcentradorBackend.Controllers
{
    [Produces("application/json")]
    [Route("api/[controller]")]
    public class ProspectoController : Controller
    {
        private readonly IProspectoService _ProspectoService;

        public ProspectoController(IProspectoService ProspectoService)
        {
            _ProspectoService = ProspectoService;
        }


        /// <summary>
        /// SAVE PROSPECTO
        /// </summary>
        /// <returns>List of Prospecto</returns>

        [HttpPost]
        public int Post([FromBody] Prospecto item)
        {
            return _ProspectoService.guardar(item);
        }
    }
}