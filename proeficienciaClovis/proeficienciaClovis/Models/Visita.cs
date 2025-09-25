using System.ComponentModel.DataAnnotations.Schema;
using MongoDB.Bson.Serialization.Attributes;

namespace proeficienciaClovis.Models;

public class Visita
{
    [BsonId]
    [DatabaseGenerated(DatabaseGeneratedOption.Identity)] 
    public string? Id { get; set; }

    public string Nome { get; set; } = string.Empty;

    public string Lugar { get; set; } = string.Empty;

    public DateTime DataVisita { get; set; }

    public string Descricao { get; set; } = string.Empty;

    public decimal Avaliacao { get; set; }
}