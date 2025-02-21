using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClassLibraryDuLepidoptere
{
     public class Lepidoptere
    {
        private string espece;
        private StadeDEvolution StadeCourant;
        public Lepidoptere(string espece) 
        {
            this.espece = espece;
            this.StadeCourant = new Oeuf();

        }
        public void SeDeplacer() {
            this.StadeCourant.SeDeplacer();
        }
        public void SeMetamorphoser() {
            this.StadeCourant = this.StadeCourant.SeMetamorphoser();
        }

        public string Bonjour()
        {
            return $"Bonjour, Je suis un Lepidoptère de type '{this.espece}'!";
        }
        /* Méthode équivalente à Bonjour() et callable avec 'console.wl(nomDeLObjet)'
        public override string ToString() { 
            return $"Bonjour, Je suis un Lepidoptère de type '{this.espece}'!";
        }
        */
    }
}
