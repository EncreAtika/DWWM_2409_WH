using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClassLibraryDuLepidoptere
{
    public class Papillon : StadeDEvolution
    {

        public Papillon() { }
        public override void SeDeplacer()
        {
            Console.WriteLine("Je vole car je suis un papillon!!");
        }

        public override StadeDEvolution SeMetamorphoser()
        {
            Console.WriteLine("Je suis Imago !!");
            return this;
        }


    }
}
