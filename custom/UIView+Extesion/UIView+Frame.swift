// MARK: - frame
extension UIView
{
    var x:CGFloat{
        get{
            return self.frame.origin.x
        }
        set{
            self.frame = CGRect(x: newValue, y: self.frame.origin.y, width: self.frame.size.width, height: self.frame.size.height)
        }
    }
    
    var y:CGFloat{
        get{
            return self.frame.origin.y
        }
        set{
            self.frame = CGRect(x: self.frame.origin.x, y:newValue, width: self.frame.size.width, height: self.frame.size.height)
        }
    }
    
    var width:CGFloat{
        get{
            return self.frame.size.width
        }
        set{
            self.frame = CGRect(origin: self.frame.origin, size: CGSize(width: newValue, height: self.frame.size.height))
        }
    }
    
    var height:CGFloat{
        get{
            return self.frame.size.height
        }
        set{
            self.frame = CGRect(origin: self.frame.origin, size: CGSize(width: self.frame.size.width, height: newValue))
        }
    }
    
    var right: CGFloat {
        return self.frame.size.origin.x + self.frame.size.width
    }
    
    var bottom: CGFloat {
        return self.frame.size.origin.y + self.frame.size.height
    }
    
}
