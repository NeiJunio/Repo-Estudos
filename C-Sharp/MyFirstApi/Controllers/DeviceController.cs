using Microsoft.AspNetCore.Mvc;
using MyFirstApi.Entities;

namespace MyFirstApi.Controllers;

//[Route("api/[controller]")]
//[ApiController]
//public class DeviceController : ControllerBase
public class DeviceController : MyFirstApiBaseController
{
    [HttpGet]
    public IActionResult Get()
    {
        var key = GetCustomKey();

        return Ok(key);

        // -------------------------------
        //var laptop = new Laptop();

        //var test = laptop.Hello();

        //var model= laptop.GetBrand(); // acessa a função GetModel que esta dentro de Laptop.cs, e essa função acessa a variável IsConnected por meio da herança com a classe Device.cs

        //return Ok(model);
    }
}
