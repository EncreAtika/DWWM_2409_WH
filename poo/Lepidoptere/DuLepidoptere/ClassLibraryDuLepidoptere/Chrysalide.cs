using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClassLibraryDuLepidoptere
{
    public class Chrysalide : StadeDEvolution
    {

        public Chrysalide() { }

        public override void SeDeplacer()
        {
            Console.WriteLine("Je ne peux pas me déplacer car je suis dans mon cocon ...");
        }

        public override StadeDEvolution SeMetamorphoser()
        {

            return new Papillon();
        }


    }
}
