# Shiro-Learning

#### 个人对于Shrio的学习以及框架源码的分析


### Shiro认证过程分析
1.Subject（DelegatingSubject）-->SecurityManger(DefaultSecurityManager)
Subject委托底层的SecurityManger来做具体的认证处理

2.DefaultSecurityManager底层维护了一个认证器(Authenticator）
SecurityManager又是通过自己维护的认证器来做认证(具体实现为ModularRealmsAuthenticator，它管理着一组List<Realm> realms)

3.ModularRealmsAuthenticator迭代底层的每一个Realm来做具体的认证操作,返回认证信息(AuthenticationInfo),如果配置了多个Realm，那么还会使用
AuthenticatingStrategy来做策略的判断,策略只是对每一个Realm认证的结果做了一个汇总，然后返回。

### Shiro授权过程分析