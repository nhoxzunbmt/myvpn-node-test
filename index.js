var CronJob = require('cron').CronJob;
var ping = require('./lib/ping')
//https://crontab.guru/
var job = new CronJob(
	'* * * * * *',
	function() {
        var utc = new Date();

        console.log('[JOB]['+utc+'] RUNNING')


        ping.ping()
	},
	null,
	true,
	'Asia/Ho_Chi_Minh'
);
// Use this if the 4th param is default value(false)
// job.start()


const express = require('express')
const app = express()
const port = 3000

app.get('/', (req, res) => {
  res.send('Hello World!')
})

app.listen(port, () => {
  console.log(`App listening at http://localhost:${port}`)
})