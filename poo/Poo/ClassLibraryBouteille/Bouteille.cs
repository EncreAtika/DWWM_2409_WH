using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClassLibraryBouteille
{
    public class Bouteille
    {
        private float contenanceEnLitre { get; set; }

        private float contenuEnLitre { get; set; }

        private bool estOuverte { get; set; }

        private string? typeLiquide { get; set; }




        public Bouteille()
            :this(1f, 1f, false, "eau")
        {
        }

        public Bouteille(float _contenanceEnLitre, float _contenuEnLitre, bool _ouverte, string? _typeLiquide)
        {
            contenanceEnLitre = _contenanceEnLitre;
            contenuEnLitre = _contenuEnLitre;
            estOuverte = _ouverte;
            typeLiquide = _typeLiquide;
        }

        public Bouteille(Bouteille bouteilleACopier)
            :this(bouteilleACopier.contenanceEnLitre, bouteilleACopier.contenuEnLitre, bouteilleACopier.estOuverte, bouteilleACopier.typeLiquide)
        {
        }

        public override string ToString()
        {
            return base.ToString() + " _contenanceEnLitre=" + contenanceEnLitre + "";
        }

        public bool Fermer()
        {
            bool resultat;
            if (estOuverte)
            {
                resultat = false;
            }
            else
            {
                resultat = true;
            }
            return resultat;
        }

        public bool Ouvrir()
        {
            bool resultat;
            if (!estOuverte)
            {
                resultat = true;
            }
            else 
            { 
                resultat = false; 
            }
            
            return resultat;
        }

        /*
		public bool Remplir(){

			
		}

		/// 
		/// <param name="quantiteEnLitre"></param>
		public bool Remplir(float quantiteEnLitre){

			
		}

		public bool Vider(){

			return false;
		}

		/// 
		/// <param name="quantiteEnLitre"></param>
		public bool Vider(float quantiteEnLitre){

			return false;
		}
		*/

    }//end Bouteille
}
