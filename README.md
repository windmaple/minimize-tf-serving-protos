# minimize-tf-serving-protos
Convenient script to identify the minimal set of protos needed by TF Serving. It recursively remove a proto from TF/TFServing repo and recompile an Android project so that it can find the minimal set of protos to support gRPC request for TF Serving.

Somehow gradle sometimes issues wrong return status, so we should run the script multiple times
