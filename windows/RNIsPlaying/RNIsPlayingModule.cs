using ReactNative.Bridge;
using System;
using System.Collections.Generic;
using Windows.ApplicationModel.Core;
using Windows.UI.Core;

namespace Is.Playing.RNIsPlaying
{
    /// <summary>
    /// A module that allows JS to share data.
    /// </summary>
    class RNIsPlayingModule : NativeModuleBase
    {
        /// <summary>
        /// Instantiates the <see cref="RNIsPlayingModule"/>.
        /// </summary>
        internal RNIsPlayingModule()
        {

        }

        /// <summary>
        /// The name of the native module.
        /// </summary>
        public override string Name
        {
            get
            {
                return "RNIsPlaying";
            }
        }
    }
}
