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
using EnregistrementDUtilisateurs;

namespace Users.ConsoleApp.Objects
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Enregistrement d'utilisateurs (gestion avec Objet Métier).");

            //Variable
            string saisieNomPrenom;
            string saisieDate;
            string? metierCouleur = null;
            ConsoleKey continuerO_N;
            List<Utilisateur> utilisateurs = new();

            //Traitement
            do
            {

                try
                {
                    Console.WriteLine("Saisissez le nom et Prénom.");
                    saisieNomPrenom = Console.ReadLine();

                    Console.WriteLine("Saisissez la date de naissane, jour/mois/année.");
                    saisieDate = Console.ReadLine();

                    Utilisateur unUtilisateur = new Utilisateur(saisieNomPrenom, saisieDate);

                    if (unUtilisateur.IsMajeur())
                    {
                        Console.WriteLine("Votre metier ?");
                        metierCouleur = Console.ReadLine();
                        unUtilisateur.SetMetier(metierCouleur);
                    }
                    else
                    {
                        Console.WriteLine("couleur préféré ?");
                        metierCouleur = Console.ReadLine();
                        unUtilisateur.SetCouleurPreferee(metierCouleur);
                    }


                    utilisateurs.Add(unUtilisateur);
                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex.Message);
                }

                Console.WriteLine("Voulez vous saisir un autre utilisateur : N/O ?");

                continuerO_N = Console.ReadKey(true).Key;
            }
            while (continuerO_N == ConsoleKey.O);


            // Affichage de la liste des utilisateurs

            // List<Utilisateur]> utilisateurs = new();
            foreach (Utilisateur utilisateur in utilisateurs)
            {
                Console.Write("Nom et Prénom : " + utilisateur.GetNomComplet() + " - ");

                Console.Write(
                    "Date de naissance (âge): " +
                    utilisateur.GetDateDeNaissance() +
                    " (" + utilisateur.GetAge() + ") - "
                    );

                Console.WriteLine(utilisateur.GetCouleurOuMetier());


            }




            /*List<Utilisateur> resultat = utilisateurs.FindAll(u => u.IsMajeur() && u.GetDateDeNaissance() == DateTime.Now.ToShortDateString());

            foreach (Utilisateur u in utilisateurs)
            {
                if(u.IsMajeur() && u.GetDateDeNaissance() == DateTime.Now.ToShortDateString())
                {
                    resultat.Add(u);
                }
            }*/
        }
    }
}