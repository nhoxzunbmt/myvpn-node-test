const axios = require('axios')
const ping = function(){
    console.log('PING')
    axios.post('https://api.myvpnmyanmar.com/myvpnapi/api/v1/node/ping', {
        os: 'PI',
      })
      .then(function (response) {
        console.log(response);
      })
      .catch(function (error) {
        console.log(error);
      });
}
module.exports = {
    ping
}