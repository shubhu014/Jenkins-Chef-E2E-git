pipeline {
    agent any

    stages {

        
       /* stage('Download Chef workstation') {
            steps {
                
                //sh 'wget https://packages.chef.io/files/stable/chef-workstation/22.1.745/ubuntu/20.04/chef-workstation_22.1.745-1_amd64.deb'
                
                
            }
        }*/
        
        stage('Let the human feel important') {
            input{message "Click Proceed to continue the build"}
            steps {
                echo "User input"
                
            }
        }
        /*stage('Make directory') {
            steps {
                  sh 'sudo su'
                  sh 'sudo rm -r cookbooks'
                  sh 'mkdir cookbooks'
                  sh 'cd cookbooks && chef generate cookbook test2801-cookbook'
                  sh 'cd cookbooks/test2801-cookbook && chef generate recipe test2801-recipe'
              
           }
       }*/
      stage('Copy Recipe') {
            steps {
                sh 'sudo su'
                sh 'cp test2801-recipe.rb cookbooks/test2801-cookbook/recipes/'
                
            }
        }
       /*  stage('Run Recipeeeee') {
            steps {
                //sh 'sudo su'
                sh "sudo su && cd cookbooks && chef-client -zr 'recipe[test2801-cookbook::test2801-recipe]'"
                
            }
        }
    /*    stage('Updating chef workstation') {
            steps {
                  sh "sudo chef-client -zr 'recipe[Jenkins-Chef-trial]' -o /home/ubuntu/chef-repo/cookbooks -c /home/ubuntu/chef-repo/.chef/config.rb"
                }
          */
          stage('Upload cookbook to chef server') {
            steps {
                //sh 'cd /home/ubuntu/chef-repo'
                sh "sudo knife cookbook upload test2801-cookbook --force -o /var/lib/jenkins/workspace/Jenkins-Chef-E2E/chef-repo -c /var/lib/jenkins/workspace/Jenkins-Chef-E2E/chef-repo/.chef/config.rb"
           }
       }
       /*
        stage('Print Workspace') {
            steps {
                echo "${WORKSPACE}"
           }
       }
        
        
   */     
    }
}
