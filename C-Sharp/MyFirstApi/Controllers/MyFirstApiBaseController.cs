using Microsoft.AspNetCore.Mvc;

namespace MyFirstApi.Controllers;

[Route("api/[controller]")]
[ApiController]
public abstract class MyFirstApiBaseController : ControllerBase // a plavra abstract aqui impede que seja criado um endpoint desse controller
{
    public string Author { get; set; } = "Nei";

    protected string GetCustomKey()
    {
        return Request.Headers["MyKey"].ToString();
    }

    // Criando endpoint
    [HttpGet("heathy")]
    public IActionResult Heathy()
    {
        return Ok("It's working");
    }
}
