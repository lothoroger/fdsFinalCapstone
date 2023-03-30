pipeline {

	agent any
	
	stages {
		stage('Build') {
			steps {
			sh 'chmod +x ./mvnw'
			sh  './mvnw compile'
			echo 'Building the Food Delivery Project with Maven compiler'			
			       }
		               }
		
		stage('Test') {
			steps {
			//bat 
			sh  './mvnw test'
			echo 'Testing the Food Delivery project with Maven test'
			  }
			       }
		
		stage('Deploy') {
			steps {
			//bat
			sh  './mvnw package'
			echo 'Deploy the Food Delivery project with Maven package'
				  }			
						}

	}
}
