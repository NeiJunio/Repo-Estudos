using Microsoft.AspNetCore.Mvc;

namespace MyFirstApi.Controllers;

[Route("api/[controller]")] // complementa a rota base
[ApiController]
public class UserController : ControllerBase
{
    [HttpGet]
    [Route("{id}")] // Passando o Id na rota
    [ProducesResponseType(typeof(User), StatusCodes.Status204NoContent)]
    [ProducesResponseType(typeof(string), StatusCodes.Status400BadRequest)]
    public IActionResult GetById([FromRoute] int id) // Se usar [FromHeader}, o parâmetro será passado no cabeçalho, e se colocar ? na frente do tipo do parâmetro, ele se torna opcional, ex: int? id
    {
        var response = new User
        {
            Id = 1,
            Age = 21,
            Name = "Nei"
        };

        return Ok(response);
    }
}
