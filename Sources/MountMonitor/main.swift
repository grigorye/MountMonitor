import AppKit
import Combine

let mountPub = NSWorkspace.shared.notificationCenter
    .publisher(for: NSWorkspace.didMountNotification)
let unmountPub = NSWorkspace.shared.notificationCenter
    .publisher(for: NSWorkspace.didUnmountNotification)

let cancellable = Publishers.Merge(mountPub, unmountPub)
    .sink { notification in
        print(Date(), notification)
    }

RunLoop.current.run()

_ = cancellable
