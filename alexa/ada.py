#from Adafruit_IO import Client
import serial
import boto3
#aio = Client('USER', 'CHANGE') 
ard = serial.Serial('/dev/ttyS2', 9600)
#s3 = boto3.resource('s3')
s3 = boto3.client(
   's3',
   # Hard coded strings as credentials, not recommended.
   aws_access_key_id='AKIAJXY53FOS5LBP6LCA',
   aws_secret_access_key='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'
)
#s3 = session.resource('s3')
#s3.create_bucket(Bucket= 'microzedchronicles')
if __name__ == '__main__':
	print("Welcome to the Humidity & Temperature reader!!!")
	try:
		while True:
			ardOut = ard.readline()
			ardHumid = ardOut.split('Temperature')[0]
			ardTemp = ardOut.split('Temperature:')[1]
			#aio.send('test', ardTemp)
			print "Temperature" + str(ardTemp)
			f = open('data.txt','w')
			f.write(str(ardTemp))
			f.close()
			s3.upload_file('data.txt','microzedchronicles','data.txt')
	except KeyboardInterrupt:
		print("CTRL-C!! Exiting...")