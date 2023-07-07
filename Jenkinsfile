pipeline {
  agent any
  environment {
    AWS_ACCESSOBJ = credentials('AWS_ACCESS_KEY_ID')
    AWS_SECRETOBJ = credentials('AWS_SECRET_ACCESS_KEY')
  }
  stages {
    stage('Create and Publish AMI using Packer') {
      steps {
        script {
          env.AWS_ACCESS_KEY_ID = "${AWS_ACCESSOBJ_PSW}"
          env.AWS_SECRET_ACCESS_KEY = "${AWS_SECRETOBJ_PSW}"
          sh "packer init ."
          sh "packer build -var-file=values_pkrvars.hcl ."
        }
      }
    }
  }
}
