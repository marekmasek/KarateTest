function fn() {
  var env = karate.env;
  if (!env) {
    env = 'test1';
  }
  karate.log('karate.env system property was:', env);
  var config = {
    env: env,
	  baseUrl: 'http://www.google.com',
	  userName: 'userName',
	  password: 'password'
  };
  if (env == 'test2') {
    config.baseUrl = 'http://www.seznam.cz',
    config.userName = 'username',
    config.password = 'password'
  };
  karate.configure('driver', { type: 'chrome', addOptions: ['--start-maximized'] })
  karate.configure('afterScenario', function(){ if (karate.info.errorMessage) driver.screenshot() })
  return config;
}