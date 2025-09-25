using MongoDB.Driver;
using MongoDB.EntityFrameworkCore.Extensions;
using proeficienciaClovis.Data;

var builder = WebApplication.CreateBuilder(args);

var mongoDbSettings = builder.Configuration.GetSection("MongoDbSettings");
builder.Services.AddSingleton<IMongoClient>(serviceProvider =>
{
    return new MongoClient(mongoDbSettings["ConnectionString"]);
});

builder.Services.AddScoped<MongoDbContext>(serviceProvider =>
{
    var client = serviceProvider.GetRequiredService<IMongoClient>();
    var database = client.GetDatabase(mongoDbSettings["DatabaseName"]);
    return MongoDbContext.Create(database);
});

builder.Services.AddControllers(); 

builder.Services.AddEndpointsApiExplorer();

var app = builder.Build();

app.UseHttpsRedirection();

app.MapControllers(); 

app.Run();