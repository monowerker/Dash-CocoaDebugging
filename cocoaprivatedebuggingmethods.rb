cheatsheet do
  title 'Cocoa Debugging'               # Will be displayed by Dash in the docset list
  docset_file_name 'CocoaDebugging'    # Used for the filename of the docset
  keyword 'debugging'             # Used as the initial search keyword (listed in Preferences > Docsets)
  # resources 'resources_dir'  # An optional resources folder which can contain images or anything else

  introduction 'Cocoa / CocoaTouch Private debugging methods'  # Optional, can contain Markdown or HTML

  # A cheat sheet must consist of categories
  category do
    id 'iOS & OS X'  # Must be unique and is used as title of the category

    entry do
      name '<pre>-[NSObject debugDescription]</pre>'
      td_notes 'Debug information about an object; used in lldb po'
    end
    entry do
      name '<pre>-[NSObject debugQuickLookObject]</pre>'
      td_notes 'Debug visualization of an object; used in Xcode’s option-click'
    end
    entry do
      name '<pre>-[NSObject _ivarDescription]</pre>'
      td_notes 'List of instance variables for an object, grouped by declaring class'
    end
    entry do
      name '<pre>-[NSObject _methodDescription]</pre>'
      td_notes 'List of methods for an object, grouped by declaring class'
    end
    entry do
      name '<pre>-[id<NSKeyValueObserving> observationInfo]</pre>'
      td_notes 'Opaque pointer describing registered observers & options'
    end
  end

  category do
    id 'OS X only'

    entry do
      name '<pre>+[NSFileCoordinator _printDebugInfo]</pre>'
      td_notes 'Log state for file coordinators and registered presenters'
    end
    entry do
      name '<pre>-[NSProcessInfo _suddenTerminationDisableCount]</pre>'
      td_notes 'Number of outstanding -disableSuddenTermination: calls'
    end
    entry do
      name '<pre>-[NSView _subtreeDescription]</pre>'
      td_notes 'Recursive information about a view and its subviews'
    end
    entry do
      name '<pre>_NSDocumentSerializationInfo()</pre>'
      td_notes 'Information about unterminated serialization/file access calls'
    end
  end

  category do
    id 'iOS only'

    entry do
      name '<pre>-[UIApplication _addRecorder:]</pre>'
      td_notes 'Begin recording UIEvents; implement -recordApplicationEvent:'
    end
    entry do
      name <<-eos
      <pre>
      -[UIApplication _playbackEvents:
                       atPlaybackRate:
                        messageWhenDone:
                       withSelector:]
      </pre>
      eos
      td_notes 'Play back recorded UIEvents, optionally adjusting speed and sending a target/action message when playback completes'
    end
    entry do
      name '<pre>-[UIApplication _removeRecorder:]</pre>'
      td_notes 'Stop recording UIEvents see -_addRecorder:'
    end
    entry do
      name '<pre>-[UIView _autolayoutTrace]</pre>'
      td_notes 'Information about a view hierarchy’s Auto Layout state'
    end
    entry do
      name '<pre>-[UIView _recursiveDescription]</pre>'
      td_notes 'Recursive information about a view and its subviews'
    end
    entry do
      name '<pre>-[UIViewController _printHierarchy]</pre>'
      td_notes 'Log view controller and children recursively'
    end
    entry do
      name '<pre>UISimulatedMemoryWarningNotification</pre>'
      td_notes 'Post to trigger -didReceiveMemoryWarning in the Simulator'
    end
  end

  notes <<-eos
  <p>
    Original cheatsheet by Tim Ekl<br />
    • <a href="http://lithium3141.com/blog/2014/12/05/objective-c-debugging-cheat-sheet/">http://lithium3141.com/blog/2014/12/05/objective-c-debugging-cheat-sheet/</a><br />
    • <a href="http://lithium3141.com/resources/2014/12/debugging-cheat-sheet.pdf">http://lithium3141.com/resources/2014/12/debugging-cheat-sheet.pdf</a><br />
  </p>
  eos
end