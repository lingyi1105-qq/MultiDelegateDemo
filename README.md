# MultiDelegateDemo

MultiDelegateDemo 是 [MultiDelegate](https://github.com/alejandro-isaza/MultiDelegate)  的 demo。

[MultiDelegate](https://github.com/alejandro-isaza/MultiDelegate)   是 a delegate multiplexing class for Objective-C，它将代理方法分派给多个对象。

本 demo 示例，使用 [MultiDelegate](https://github.com/alejandro-isaza/MultiDelegate)  在完全不修改原代理方法的情况下，让多个对象同时使用代理方法。



MultiDelegate 引用自 [alejandro-isaza/MultiDelegate: Objective-C delegate multiplexing (github.com)](https://github.com/alejandro-isaza/MultiDelegate)



Demo 示例将 ThirdpartyManager 类的代理方法，通过创建一个 category 封装实现 multiDelegate 能力。 



 ThirdpartyManager 用于功能演示，

```objective-c

@protocol ThirdpartyManagerDelegate <NSObject>

@optional

- (void)messageFrom:(NSString *)from to:(NSString *)to content:(id)content;

@end

@interface ThirdpartyManager : NSObject

@property (nonatomic, assign) NSUInteger index;


@property (nonatomic, weak) id<ThirdpartyManagerDelegate> delegate;



+ (instancetype)sharedManager;

@end
  
```

 ThirdpartyManager+AIMultiDelegate 在不更改 ThirdpartyManager 的情况下，增加初始化、增加、删除多个 delegate 方法，

```objc


@interface ThirdpartyManager (AIMultiDelegate)

- (void)initMultiDelegate;

- (void)addMultiDelegate:(id)delegate;

- (void)removeMultiDelegate:(id)delegate;
- (void)removeAllMultiDelegates;


@end
```



全局只需调用一次 initMultiDelegate 方法，需要增加 delegate 使用 addMultiDelegate: 方法，删除 delegate 时候使用 removeMultiDelegate: 方法。
