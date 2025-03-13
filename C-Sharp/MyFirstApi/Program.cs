var builder = WebApplication.CreateBuilder(args);

// Add services to the container.

builder.Services.AddControllers();  // adiciona todos os controllers
// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();

builder.Services.AddRouting(option =>option.LowercaseUrls = true);

var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.UseHttpsRedirection();  // Redireciona para o metodo seguro https

app.UseAuthorization();

app.MapControllers();

app.Run();
