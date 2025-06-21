using Godot;
using System;
using System.IO;
using LibGit2Sharp;

public class GitUtils
{
    public string RepoPath { get; private set; }

    public GitUtils(string repoPath)
    {
        RepoPath = repoPath;
    }

    public bool IsRepo()
    {
        return Repository.IsValid(RepoPath);
    }

    public void InitRepository()
    {
        if (IsRepo()) return;
        Repository.Init(RepoPath);
    }

    public void CreateGitignore()
    {
        throw new NotImplementedException("Git Utilities are currently not implemented, therefore this function is not implemented.");
    }

    public void AddAllAndCommit(string message)
    {
        using var repo = new Repository(RepoPath);
        Commands.Stage(repo, "*");
        
        var author = new Signature("Syncra User", "<EMAIL>", DateTimeOffset.Now);
        repo.Commit(message, author, author);
    }
}
