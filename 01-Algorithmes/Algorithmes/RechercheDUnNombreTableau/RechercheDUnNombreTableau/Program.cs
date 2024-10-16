/* Soit un tableau de nombres entier triés par ordre croissant.
    Exemple: [8, 16, 32, 64, 128, 256, 512]
    Chercher si un nombre donné N figure parmi les éléments.
    Si oui, afficher la valeur de l’indice correspondant. Sinon, 
    afficher « Nombre non trouvé ».
*/
namespace RechercheDUnNombreTableau
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Recherche d'un nombre entier dans untableau :");
            
            int[] monTableau = new int []{ 8, 16, 32, 64, 128, 256, 512 };


            Console.WriteLine("Veuillez saisir un nombre: ");
            int nombreSaisi = int.Parse(Console.ReadLine());
            
        } 
    }
}
