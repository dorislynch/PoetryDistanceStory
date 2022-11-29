using ReactNative.Bridge;
using System;
using System.Collections.Generic;
using Windows.ApplicationModel.Core;
using Windows.UI.Core;

namespace Poetry.Distance.Story.RNPoetryDistanceStory
{
    /// <summary>
    /// A module that allows JS to share data.
    /// </summary>
    class RNPoetryDistanceStoryModule : NativeModuleBase
    {
        /// <summary>
        /// Instantiates the <see cref="RNPoetryDistanceStoryModule"/>.
        /// </summary>
        internal RNPoetryDistanceStoryModule()
        {

        }

        /// <summary>
        /// The name of the native module.
        /// </summary>
        public override string Name
        {
            get
            {
                return "RNPoetryDistanceStory";
            }
        }
    }
}
