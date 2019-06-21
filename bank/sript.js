(window.onload=function(){
    "use strict";
    let accounts=(function(){
        let accountList=[]; //accountList is a private element of accounts.

        //making public access to update and show keys(as function name):values(as function implementation)
        return { add : function(details){accountList.push(details);}, display: function(){return accountList}}
        
    })();
    
    document.getElementById('create').onclick=()=>{
        let accountName=document.getElementById('account').value;
        let deposit=document.getElementById('deposit').value;

        let a=new RegExp("^([0-9]+)(\.)([0-9]{2})?$");
        let z=a.test(deposit);
        console.log(z);

        accounts.add({name: accountName, balance: deposit});
        document.getElementById('display').value=null;
        accounts.display().map(x=>document.getElementById('display').value+=(`Account name: ${x.name}   Deposit: ${x.balance}\n`))
    }

});