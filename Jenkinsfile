pipeline {

	agent any
	stages {
		stage('Build') {
		   
			steps {
			//Get code from GitHub repository
			git (branch: 'main', url: 'https://github.com/lothoroger/capstone2023fdsfood.git')
			
			//Run maven wrapper
			// bat  'mvnw compile'
		    //sh "chmod +x -R /var/jenkins_home/workspace/CapstoneJenkinsDocker"
		     sh 'chmod +x ./mvnw'
			 sh 'echo ${WORKSPACE}'
			 sh './mvnw wrapper:wrapper'
			 sh './mvnw clean install'
			 sh './mvnw compile'
			echo 'Building the Food Delivery Project with Maven compiler'			
			       }
		               }
		
		stage('Test') {
			steps {
		
			// bat   'mvnw test'
			 sh '/.mvnw test'
			echo 'Testing the Food Delivery project with Maven test'
			  }
			       }
		
		stage('Deploy') {
			steps {
			//bat  'mvnw package'
		    sh './mvnw  package'
			echo 'Deploy the Food Delivery project with Maven package'
				  }			
						}

	}
}
