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
	'America/Los_Angeles'
);
// Use this if the 4th param is default value(false)
// job.start()