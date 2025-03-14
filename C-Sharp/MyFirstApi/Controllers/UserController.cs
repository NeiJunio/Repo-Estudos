using Microsoft.AspNetCore.Mvc;
using MyFirstApi.Comunication.Requests;
using MyFirstApi.Comunication.Responses;

namespace MyFirstApi.Controllers;

//[Route("api/[controller]")] // complementa a rota base
//[ApiController]
//public class UserController : ControllerBase
public class UserController : MyFirstApiBaseController
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


    [HttpPost]
    [ProducesResponseType(typeof(ResponseRegisterUserJson), StatusCodes.Status201Created)]
    public IActionResult Create([FromBody] RequestRegisterUserJson request)
    {
        var response = new ResponseRegisterUserJson
        {
            Id = 1,
            Name = request.Name,
        };

        return Created(string.Empty, response);
    }


    [HttpPut]
    //[Route("{id}")]
    [ProducesResponseType(StatusCodes.Status204NoContent)]
    public IActionResult Update([FromBody] RequestUpdateUserProfileJson request)
    {
        return NoContent();
    }


    [HttpDelete] // Não recebe requisições no body
    [ProducesResponseType(StatusCodes.Status204NoContent)]
    public IActionResult Delete()
    {
        return NoContent();
    }

    [HttpGet]
    [ProducesResponseType(typeof(List<User>), StatusCodes.Status200OK)]
    public IActionResult GetAll()
    {
        var response = new List<User>
        {
            new User {Id = 1,Age = 20, Name = "Nei"},
            new User {Id = 2,Age = 21, Name = "Junio"}
        };

        //var key = GetCustomKey();

        return Ok(response);
    }

    [HttpPut("change-password")]
    [ProducesResponseType(StatusCodes.Status204NoContent)]
    public IActionResult ChangePassword([FromBody] RequestChangePasswordJson request)
    {
        return NoContent();
    }
}

