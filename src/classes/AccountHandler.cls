public class AccountHandler 
{
    //chages done in github
    public static Account insertNewAccount(String str)
    {
       try    
       {
           Account ac= new Account();
        ac.Name=str;
        insert ac;
        return ac;
       }catch(DmlException e)
       {
           System.debug('Error message'+e.getMessage());
           return(null);
       }
    }
}
