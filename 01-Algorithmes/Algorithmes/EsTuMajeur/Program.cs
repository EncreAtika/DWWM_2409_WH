namespace EsTuMajeur
{
    internal class Program
    {
        static void Main(string[] args)
        {
            // VARIABLE
            int age;
            string ?saisiUtilisateur; // En mettant le "?" juste avant le nom de la variable on le rend "nulable" ce qui fait que le Console.ReadLine() ne "râle" plus ...

            // TRAITEMENT 
            try
            {
                Console.WriteLine("Bonjour, veuillez saisir votre age : ");
                saisiUtilisateur = Console.ReadLine();
                age = int.Parse(saisiUtilisateur);

                // AFFICHAGE
                if (age >= 18)
                {
                    Console.WriteLine("Vous êtes majeur.");
                }

                else if (age < 0)
                {
                    Console.WriteLine("Vous n'êtes pas né.");
                }

                else 
                {
                    Console.WriteLine("Vous êtes mineurs.");
                }
                        } 
            
            catch(Exception ex) 
            {
                Console.WriteLine(ex.Message);
            }
        }
    }
}
