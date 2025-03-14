import Foundation

public enum OAuthScope: String, CaseIterable {
    case repo = "repo"
    case repoStatus = "repo:status"
    case repoDeployment = "repo_deployment"
    case publicRepo = "public_repo"
    case repoInvite = "repo:invite"
    case securityEvents = "security_events"
    case workflow = "workflow"
    case writePackages = "write:packages"
    case readPackages = "read:packages"
    case deletePackages = "delete:packages"
    case adminOrg = "admin:org"
    case writeOrg = "write:org"
    case readOrg = "read:org"
    case manageRunnersOrg = "manage_runners:org"
    case adminPublicKey = "admin:public_key"
    case writePublicKey = "write:public_key"
    case readPublicKey = "read:public_key"
    case adminRepoHook = "admin:repo_hook"
    case writeRepoHook = "write:repo_hook"
    case readRepoHook = "read:repo_hook"
    case adminOrgHook = "admin:org_hook"
    case gist = "gist"
    case notifications = "notifications"
    case user = "user"
    case readUser = "read:user"
    case userEmail = "user:email"
    case userFollow = "user:follow"
    case deleteRepo = "delete_repo"
    case writeDiscussion = "write:discussion"
    case readDiscussion = "read:discussion"
    case adminEnterprise = "admin:enterprise"
    case manageRunnersEnterprise = "manage_runners:enterprise"
    case manageBillingEnterprise = "manage_billing:enterprise"
    case readEnterprise = "read:enterprise"
    case auditLog = "audit_log"
    case readAuditLog = "read:audit_log"
    case codespace = "codespace"
    case codespaceSecrets = "codespace:secrets"
    case copilot = "copilot"
    case manageBillingCopilot = "manage_billing:copilot"
    case project = "project"
    case readProject = "read:project"
    case adminGpgKey = "admin:gpg_key"
    case writeGpgKey = "write:gpg_key"
    case readGpgKey = "read:gpg_key"
    case adminSSHSigningKey = "admin:ssh_signing_key"
    case writeSSHSigningKey = "write:ssh_signing_key"
    case readSSHSigningKey = "read:ssh_signing_key"
    case userAssets = "user:assets"
}

extension [OAuthScope] {
    public var scopesString: String {
        map { $0.rawValue }.joined(separator: "+")
    }
}
