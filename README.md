<div align="center">
  <img align="center"  width="auto" height="auto" src="https://nuwe.io/images/Group-3-3.png" />
  <br/>

  <div id="user-content-toc">
    <ul>
      <summary><h1 style="display: inline-block;">C# Template</h1></summary>
    </ul>
  </div>
</div>

## Introduction

This is a repository intended to serve as a starting point if you want to bootstrap a project in C# and dotnet.

It could be useful if you want to start from scratch a kata or a little exercise or project.


## Requisites
- [Dotnet 6](https://dotnet.microsoft.com/)

## How To Start

### Cloning the repository 

We recommend to follow the next step by step process in order to avoid adding the bootstrap project commits to your project Git history
 
3. If you don't have it already, [install dotnet](https://dotnet.microsoft.com/download).
4. Build the project: `dotnet build`
5. Run tests: `dotnet test`. 
6. Create your own repository cleaning the bootstrap project history:
    1. Remove previous Git history in order to do not add the bootstrap repo noise in your project: `rm -rf .git`
    2. Initialize your own Git repository: `git init`
    3. Add the bootstrap files: `git add .`
    4. Commit: `git commit -m "Initial commit with project boilerplate based on https://github.com/CodelyTV/csharp-basic-skeleton"`
    5. Add your remote repository: `git remote add origin git@github.com:your-username/your-project-name`
    6. Upload your local commits to the new remote repo: `git push -u origin master`
7. Start coding!

## About

This hopefully helpful utility has been developed by [CodelyTV][link-author] and [contributors][link-contributors].

We'll try to maintain this project as simple as possible, but Pull Requests are welcomed!


## License

The MIT License (MIT). Please see [License File](LICENSE) for more information.

