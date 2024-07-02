use master
GO
use dbAcougue
GO

INSERT INTO AspNetRoles (Id, Name, NormalizedName) VALUES (NEWID(), 'Admin', 'ADMIN');
GO

INSERT INTO AspNetRoles (Id, Name, NormalizedName) VALUES (NEWID(), 'Operador', 'OPERADOR');
GO

INSERT INTO AspNetRoles (Id, Name, NormalizedName) VALUES (NEWID(), 'Gerente', 'GERENTE');
GO

INSERT INTO AspNetUsers (Id, UserName, NormalizedUserName, Email, NormalizedEmail, EmailConfirmed, PasswordHash, SecurityStamp, ConcurrencyStamp, PhoneNumberConfirmed, TwoFactorEnabled, LockoutEnabled, AccessFailedCount) 
VALUES (NEWID(), 'admin@example.com', 'ADMIN@EXAMPLE.COM', 'admin@example.com', 'ADMIN@EXAMPLE.COM', 1, 'AQAAAAIAAYagAAAAEKhX9M0uu9HgbxChQrghO5J0LMgSj3LFvTd+aekSXT9ZCsXp7ihMb7Q9x6zpVQSVyA==', 'RANDOM_SECURITY_STAMP_1', 'RANDOM_CONCURRENCY_STAMP_1', 0, 0, 0, 0);
GO

INSERT INTO AspNetUsers (Id, UserName, NormalizedUserName, Email, NormalizedEmail, EmailConfirmed, PasswordHash, SecurityStamp, ConcurrencyStamp, PhoneNumberConfirmed, TwoFactorEnabled, LockoutEnabled, AccessFailedCount) 
VALUES (NEWID(), 'operador@example.com', 'OPERADOR@EXAMPLE.COM', 'operador@example.com', 'OPERADOR@EXAMPLE.COM', 1, 'AQAAAAIAAYagAAAAEBOlRs2FxS9sB4y3u696fJconeA0ac1XJXwMiTy16/5bCGVM9JUQvv2p/BgPu/Bg9g==', 'RANDOM_SECURITY_STAMP_2', 'RANDOM_CONCURRENCY_STAMP_2', 0, 0, 0, 0);
GO

INSERT INTO AspNetUsers (Id, UserName, NormalizedUserName, Email, NormalizedEmail, EmailConfirmed, PasswordHash, SecurityStamp, ConcurrencyStamp, PhoneNumberConfirmed, TwoFactorEnabled, LockoutEnabled, AccessFailedCount) 
VALUES (NEWID(), 'gerente@example.com', 'GERENTE@EXAMPLE.COM', 'gerente@example.com', 'GERENTE@EXAMPLE.COM', 1, 'AQAAAAIAAYagAAAAELFEhzXAr8xrzWK5MrA5DYpt79GgsO8lD1iF4rqm0HXJgZpKQMnWnDZVmmckVuz3dQ==', 'RANDOM_SECURITY_STAMP_3', 'RANDOM_CONCURRENCY_STAMP_3', 0, 0, 0, 0);
GO

INSERT INTO AspNetUserRoles (UserId, RoleId) 
SELECT u.Id, r.Id FROM AspNetUsers u, AspNetRoles r WHERE u.UserName = 'admin@example.com' AND r.Name = 'Admin';
GO

INSERT INTO AspNetUserRoles (UserId, RoleId) 
SELECT u.Id, r.Id FROM AspNetUsers u, AspNetRoles r WHERE u.UserName = 'operador@example.com' AND r.Name = 'Operador';
GO

INSERT INTO AspNetUserRoles (UserId, RoleId) 
SELECT u.Id, r.Id FROM AspNetUsers u, AspNetRoles r WHERE u.UserName = 'gerente@example.com' AND r.Name = 'Gerente';
GO