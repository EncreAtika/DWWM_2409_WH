namespace ContrôlerLaSaisie
{
    internal class Program
    {
        static void Main(string[] args)        
        {
            string prenom;
            Console.WriteLine("What's your name ?!");
            prenom = Console.ReadLine();

         while (prenom.Length < 2)

            { Console.WriteLine("Veuillez saisir un vrai prénom !");
                prenom = Console.ReadLine();
            }

            Console.WriteLine("Bonjour " + prenom);
        }
    }
}
