pipeline {
    agent any

    stages {

        
        stage('Download Chef workstation') {
            steps {
                
                sh 'wget https://packages.chef.io/files/stable/chef-workstation/22.1.745/ubuntu/20.04/chef-workstation_22.1.745-1_amd64.deb'
                
            }
        }
       /* stage('Move recipe to required location') {
            steps {
                //sh 'chef generate cookbook Jenkins-Chef-trial'
                //sh 'sudo mkdir -p /home/ubuntu/chef-repo/cookbooks/Jenkins-Chef-trial'
                //sh 'sudo mv /var/lib/jenkins/workspace/Jenkins-Chef/Jenkins-Chef-trial /home/ubuntu/chef-repo/cookbooks/'
                sh 'sudo mv /var/lib/jenkins/workspace/Jenkins-Chef/recipes/default.rb /home/ubuntu/chef-repo/cookbooks/Jenkins-Chef-trial/recipes/'
           }
       }
        stage('Updating chef workstation') {
            steps {
                  sh "sudo chef-client -zr 'recipe[Jenkins-Chef-trial]' -o /home/ubuntu/chef-repo/cookbooks -c /home/ubuntu/chef-repo/.chef/config.rb"
                }
          
          stage('Upload cookbook to chef server') {
            steps {
                //sh 'cd /home/ubuntu/chef-repo'
                sh "sudo knife cookbook upload Jenkins-Chef-trial --force -o /home/ubuntu/chef-repo/cookbooks -c /home/ubuntu/chef-repo/.chef/config.rb"
           }
       }
       
        stage('Print Workspace') {
            steps {
                echo "${WORKSPACE}"
           }
       }
        
        
   */     
    }
}
