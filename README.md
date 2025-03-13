# SageMaker Persistent Configuration
This is just a test
![SageMaker Logo](https://your-image-url-here.com/sagemaker-logo.png)

## Introduction

SageMaker Persistent Configuration is a powerful tool designed to enhance your SageMaker Studio experience by providing persistent configurations for Jupyter notebooks. This solution addresses common pain points in SageMaker environments, ensuring that your carefully crafted setups remain intact across sessions.

Key features:
- 🐍 Persistent conda environments
- 🖥️ Persistent bash and xonsh configurations
- 📦 Workaround for persistent apt packages
- 🗄️ Utilizes SageMaker's default EFS for storage

## How to Apply
- Create a Sagemaker studio Notebook
- under the folder in which the EFS is mounted (regularly /home/sagemaker-user/user-default-efs) use `git clone https://github.com/virgilio-murillo/sagemaker-persistent-configuration.git`
- create a lifecicle configuration to call `lifecycle_helper.xsh`, see [Example Lifecycle Configuration](#example-lifecycle-configuration) for more details.

## Example Lifecycle Configuration
```
```

## Features in Detail

### Persistent Conda Environments
* Environments are stored in the EFS, ensuring they persist across sessions.
* Easily switch between projects without losing your specific package setups.
  
### Bash and Xonsh Configurations
Your shell configurations are preserved, maintaining your preferred aliases, functions, and prompt settings.

### Apt Package Persistence
Our innovative workaround allows you to keep apt packages installed across SageMaker Studio sessions.
Note: This feature requires careful use and understanding of SageMaker's security implications.

## Contributing
We welcome contributions! Please see our [Contributing Guidelines](https://console.harmony.a2z.com/CONTRIBUTING.md) for more information on how to get involved.

## License
This project is licensed under the MIT License - see the [LICENSE](https://console.harmony.a2z.com/LICENSE) file for details.

⭐ Found this useful? Star us on GitHub!

📣 For updates, follow [@YourTwitterHandle](https://twitter.com/YourTwitterHandle)
