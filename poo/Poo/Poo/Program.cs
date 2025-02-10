using ClassLibraryBouteille;
using System.Runtime.CompilerServices;

namespace Poo
{
    internal class Program
    {

        static void Main(string[] args) 
        { 
            Bouteille bouteille1 = new Bouteille();
            Bouteille bouteilleOuverte = new Bouteille(1.5f, 0.75f, true);
            Bouteille bouteilleClonee = new Bouteille(bouteille1);
            Bouteille bouteilleVin = new Bouteille(1.25f, 0.5f, false);
            Bouteille bouteilleHuile = new Bouteille(0.75f, 0.75f, true);

            Console.WriteLine(bouteilleOuverte.contenuEnLitre + " " + bouteilleOuverte.estOuverte );
            Console.WriteLine();
            Console.WriteLine(bouteille1.estOuverte + " " + bouteilleClonee.estOuverte);
            Console.WriteLine();
            Console.WriteLine(bouteilleVin.contenuEnLitre  + " " + bouteilleClonee.estOuverte );
            Console.WriteLine();
            Console.WriteLine(bouteilleHuile.contenanceEnLitre + " " + bouteilleVin.estOuverte);
;        }
    
    
    
    
    
    
    }
}
  