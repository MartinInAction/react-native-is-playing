using ReactNative.Bridge;
using System;
using System.Collections.Generic;
using Windows.ApplicationModel.Core;
using Windows.UI.Core;

namespace Is.Playing.isPlaying
{
    /// <summary>
    /// A module that allows JS to share data.
    /// </summary>
    class isPlayingModule : NativeModuleBase
    {
        /// <summary>
        /// Instantiates the <see cref="isPlayingModule"/>.
        /// </summary>
        internal isPlayingModule()
        {

        }

        /// <summary>
        /// The name of the native module.
        /// </summary>
        public override string Name
        {
            get
            {
                return "isPlaying";
            }
        }
    }
}
