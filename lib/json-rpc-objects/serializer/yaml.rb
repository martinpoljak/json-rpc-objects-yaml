# encoding: utf-8
# (c) 2011 Martin Kozák (martinkozak@martinkozak.net)

require "json-rpc-objects/serializer"
require "yaml"

##
# Main JSON-RPC Objects module.
#

module JsonRpcObjects
    
    ##
    # Abstract serializer class.
    # @abstract
    #
    
    class Serializer
    
        ##
        # YAML serializer using internal Ruby YAML.
        #
        
        class YAML < Serializer 
                
            ##
            # Serializes data.
            #
            # @param [Object] data some data
            # @return [Object] object in serialized form
            #
            
            def serialize(data)
                ::YAML.dump(data)
            end
            
            ##
            # Deserializes data.
            #
            # @param [Object] data data in serialized form
            # @return [Object] deserialized data
            #
            
            def deserialize(data)
                ::YAML.load(data)
            end
    
        end
        
    end
end
    
    
