/*# Enregistrement d'utilisateurs

## 1. Le programme demande à l'utilisateur de saisir un nom et un prénom
    
    - l'utilisateur saisit un nom et un prénom.

## 2. Le programme demande à l'utilisateur de saisir sa date de naissance
    
    - L'utilisateur saisit sa date de naissance.

## 3. Le programme calcule l'age de la personne en cours d'ajout
    
    - Si l'âge est supérieur ou égal à 18 (majeur) :
        -ALORS le programme demande à l'utilisateur de saisir son métier.
    
    - SINON SI l'âge est inférieur à 18 ans (mineur) :
        - ALORS le programme demande à l'utilisateur de saisir sa couleur préféré.

## 4. Lorsque toutes les informations sont saisies :
    
    - Le programme enregistre l'utilisateur.

## 5. Le programme demande à l'utilisateur s'il souhaite ajouter une autre personne :
    
    - SI OUI :
        - Retour à l'étape 1 (saisir nom et prénom).

    -SINON : 
        -Afficher tous les utilisateurs enregistrés en respevtant ce format :
        Nom - Prénom - dDâte de Naissance (age) - Métier ou Couleur préférée.

## 6. Le programme remercie l'utilisateur et se termine.
*/

namespace EnregistrementDUtilisateurs
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Enregistrement d'utilisateurs (gestion avec Listes)");

            //VARIABLES

            bool majeur;
            bool dateValide;
            
            ConsoleKey continuerO_N;
            
            DateTime formatDate;
            DateTime ajd = new DateTime();
            
            int age = 0;

            List<string[]>utilisateur = new();
                // Dans chaque cas il y aura un tableau
            
            string? metierCouleur = null;
            //Le point d'interrogation derrière string permet la catégorie nullable
            string saisieDate;
            string saisieNomPrenom;

            //TRAITEMENT

            do
            {
                Console.WriteLine("Saisissez le nom et le prénom : ");
                saisieNomPrenom = Console.ReadLine();

                Console.WriteLine("Saisissez la dâte de naissance correspondante en jour/mois/année : ");
                saisieDate = Console.ReadLine();

                if (DateTime.TryParse(saisieDate, out formatDate))
                {
                    TimeSpan intervalle = ajd - formatDate;
                    // Permet de calculer l'âge.
                    age = (int)(intervalle.Days / 365.25);
                }

                if (age <= 0)
                {
                    Console.WriteLine("Saisie non valide.");
                }

                else if (age < 18)
                {
                    Console.WriteLine("Quelle est votre couleur préférée ? ");
                    metierCouleur = Console.ReadLine();
                }

                else
                {
                    Console.WriteLine("Quel est votre métier ?");
                    metierCouleur = Console.ReadLine();
                }

                string[] utilisateurs = [saisieNomPrenom, saisieDate + "(" + age + ")", metierCouleur];
                Console.WriteLine("Voulez cous saisir un autre utilisateur ? Oui ou NON ? ");
                continuerO_N = Console.ReadKey(true).Key;
            }

            while (continuerO_N == ConsoleKey.O);
            
            
            
            
            



        }
    }
}


