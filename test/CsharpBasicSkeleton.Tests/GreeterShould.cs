using Xunit;

namespace CodelyTv.CsharpBasicSkeleton.Tests;

public class GreeterShould
{
    [Fact]
    public void Greet_HelloMessage_Receives()
    {
        Assert.Equal("Hello Jhon", Greeter.Greet("Jhon"));
    }

    /*[Fact]
    public void Failed_Test()
    {
        Assert.Equal(0, 1);
    }*/
}
