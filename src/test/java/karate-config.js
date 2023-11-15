function fn() {
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  var text="";
      var pattern = "1234567890";
      for(var i=0; i<4; i++){
      text +=pattern.charAt(Math.floor(Math.random()*pattern.length()));
      }
  if (!env) {
    env = 'dev';
  }
  var config = {
    env: env,
    gv:null,
    myVarNamenew: 'hello karate', 
baseUrlnew: 'https://www.kloia.com/',
    myVarName: 'someValue',
    baseUrl: 'https://jsonplaceholder.typicode.com/',
    name: "Test User"+text,
    email: text+"@user4.com"
  }
  if (env == 'qa') {
    // customize
    // e.g. config.foo = 'bar';
    config.baseUrl = 'https://jsonplaceholder.typicode.com/'
  } else if (env == 'e2e') {
   config.baseUrl = 'https://jsonplaceholder.typicode.com/'
    // customize
  }
  return config;
}