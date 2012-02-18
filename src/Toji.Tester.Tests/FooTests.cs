#region Using Directives

using NUnit.Framework;

#endregion

namespace Example.Tests
{
    [TestFixture]
    public class FooTests
    {
        [Test]
        public void TheMeaningOfLifeIs42()
        {
            Assert.AreNotEqual( 42, new Foo().MeaningOfLife );
        }
    }
}