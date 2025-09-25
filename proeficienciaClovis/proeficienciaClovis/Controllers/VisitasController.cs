using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using proeficienciaClovis.Data;
using proeficienciaClovis.Models;

namespace ProeficienciaClovis.Controllers;

[ApiController]
[Route("api/[controller]")]
public class VisitasController(MongoDbContext context) : ControllerBase
{
    [HttpGet]
    public async Task<ActionResult<IEnumerable<Visita>>> GetVisitas()
    {
        return await context.Visitas.ToListAsync();
    }

    [HttpGet("{id}")]
    public async Task<ActionResult<Visita>> GetVisita(string id)
    {
        var visita = await context.Visitas.FirstOrDefaultAsync(p => p.Id == id);

        if (visita == null)
            return NotFound();

        return visita;
    }

    [HttpPost]
    public async Task<ActionResult<Visita>> PostVisita(Visita visita)
    {
        context.Visitas.Add(visita);
        await context.SaveChangesAsync();

        return CreatedAtAction(
            nameof(GetVisita),
            new
            {
                id = visita.Id
            },
            visita);
    }

    [HttpPut("{id}")]
    public async Task<IActionResult> UpdateVisita(string id, Visita updatedVisita)
    {
        if (id != updatedVisita.Id)
            return BadRequest("ID mismatch between URL and request body.");

        var dbVisita = await context.Visitas.FirstOrDefaultAsync(v => v.Id == id);

        if (dbVisita == null)
            return NotFound();

        dbVisita.Nome = updatedVisita.Nome;
        dbVisita.Lugar = updatedVisita.Lugar;
        dbVisita.DataVisita = updatedVisita.DataVisita;
        dbVisita.Descricao = updatedVisita.Descricao;
        dbVisita.Avaliacao = updatedVisita.Avaliacao;

        await context.SaveChangesAsync();

        return NoContent();
    }

    [HttpDelete("{id}")]
    public async Task<IActionResult> DeleteVisita(string id)
    {
        var visita = await context.Visitas.FirstOrDefaultAsync(v => v.Id == id);

        if (visita == null)
            return NotFound();

        context.Visitas.Remove(visita);

        await context.SaveChangesAsync();

        return NoContent();
    }
}