using ClassLibraryBouteille;
using System.Runtime.CompilerServices;

namespace Poo
{
    internal class Program
    {

        static void Main(string[] args) 
        { 
            Bouteille bouteille1 = new Bouteille();
            Console.WriteLine(bouteille1.ToString());

            Bouteille bouteilleOuverte = new Bouteille(1.5f, 0.75f, true, "eau");
            Console.WriteLine(bouteilleOuverte.ToString());

            Bouteille bouteilleClonee = new Bouteille(bouteille1);
            Console.WriteLine(bouteilleClonee.ToString());

            Bouteille bouteilleVin = new Bouteille(1.25f, 0.5f, false, "vin");
            Console.WriteLine(bouteilleVin.ToString());

            Bouteille bouteilleHuile = new Bouteille(0.75f, 0.75f, true, "huile");
            Console.WriteLine(bouteilleHuile.ToString());


            bool ok = bouteilleOuverte.Ouvrir();
;        }
    
    
    
    
    
    
    }
}
  