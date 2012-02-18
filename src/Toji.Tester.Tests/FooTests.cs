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
        
            Assert.AreEqual( 42, new Foo().MeaningOfLife );
        }
    }
}