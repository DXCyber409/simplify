.class Loptimizer_test;
.super Ljava/lang/Object;

.method public static SimpleLoop()I
  .locals 2

  const/4 v0, 0x1
  const/4 v1, 0x7

  :loop
  if-eq v0, v1, :end
  add-int/2addr v0, v0
  goto :loop

  :end
  return-void
.end method

# The move-objects aren't me trolling. They're from unoptimized dx output.
# They're useful for breaking some assumptions, so they're kept.
.method public static StringBuilderHelloWorld()Ljava/lang/String;
    .locals 5

    .prologue
    .line 43
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2
    move-object v2, v4
    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    move-object v1, v2

    .line 45
    move-object v2, v1
    const-string v3, "hello"
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2

    .line 47
    move-object v2, v1
    const-string v3, ","
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2

    .line 49
    move-object v2, v1
    const-string v3, "world!"
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2

    .line 51
    move-object v2, v1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    move-object v0, v2

    return-object v0
.end method