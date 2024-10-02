namespace DiviseurD1Nombre // Namespace : conteneur qui regroupe l'ensemble du code. Permet d'organiser le code et d'éviter les conflits de noms avec d'autres parties du programme.
{
    internal class Program // Classe : C'est la classe principale où le programme s'execute
    {
     
       static void Main(string[] args) // Méthode Main : C'est le point d'entrée de l'application. Tout programme C# console doit avoir une méthode Main
       
        {
            int nombre;

            Console.WriteLine("Saisir un nombre entier et afficher tous ses diviseurs autres que 1 et lui-même. "); //Saisie de l'entrée utilisateur.
            Console.WriteLine("");
            Console.WriteLine("Bonjour, Veuillez entrer un nombre entier : ");
            Console.WriteLine("");

            nombre = int.Parse(Console.ReadLine()); // Cette ligne lit l'entrée de l'utilisateur (nombre entier) à partir de la console et le convertit en un entier qui est ensuite stocké dans la variable nombre.

            Console.WriteLine("Les diviseurs de " + nombre + " sont : ");
           
            for (int i = 2; i <= nombre /2; i++) { // Boucle for et condition

                if (nombre % i == 0)
                {
                    Console.WriteLine(i + " "); // Affichage des résulats : Si i est un diviseur il est affiché à l'cran.
                }
            }
            
            }
    }
}
